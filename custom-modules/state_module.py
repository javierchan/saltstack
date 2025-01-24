# Example custom state module

def managed(name):
    return {'name': name, 'result': True, 'changes': {}, 'comment': 'Custom state applied successfully'}